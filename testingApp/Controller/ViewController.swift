//
//  ViewController.swift
//  testingApp
//
//  Created by Samuel Garvett on 10/15/18.
//  Copyright © 2018 Samuel Garvett. All rights reserved.
//

import UIKit
import SceneKit
import ARKit
import RealityKit
import SwiftUI

struct NodeAnimation {
    var nodeName: String
    var duration: Double
    var animations: (SCNNode) -> ()
    var reverse: (SCNNode) -> ()
    var info: ComponentInfo?
}

struct ComponentInfo {
    var title: String
    var image: UIImageView
    var description: String
    var inventoryCount: Int
    var partNumber: String
    
}



//class ComponentOverlayView: UIViewController {
//    var info: ComponentInfo!
//    @IBOutlet var stackView: UIStackView!
//}

extension SCNView {
    func animate(node: NodeAnimation, animations: (SCNNode) -> ()) {
        if let anime = self.scene?.rootNode.childNode(withName: node.nodeName,
                                                     recursively: true) {
            
            SCNTransaction.begin()
            animations(anime)
            SCNTransaction.animationDuration = node.duration
            SCNTransaction.commit()
        }
    }
}

class ViewController: UIViewController, ARSCNViewDelegate {
    typealias UIViewType = ViewController
    
    
    

//    
//    //initiates animation runtime
//    var runningAnimation: Bool!
    // used in order to keep track of next/back animations
    var animationButtonCounter = 0
    var nodeAnimations = [NodeAnimation]()
    var animationIndex = 0
    
    //var focusSquare = FocusSquare()
    
    /// A serial queue used to coordinate adding or removing nodes from the scene.
//    let updateQueue = DispatchQueue(label: "String")
//
//    var screenCenter: CGPoint {
//        let bounds = sceneView.bounds
//        return CGPoint(x: bounds.midX, y: bounds.midY)
//    }
    
    
    //Convenience accessor for the session owned by ARSCNView.
    var session: ARSession { return sceneView.session }
    
    
    
    
    
    // MARK: IBOutlets
    
    @IBOutlet var sceneView: VirtualObjectARView!
    @IBOutlet weak var animationButtons: UIView!
    @IBAction func previousAnimation(_ sender: UIButton)
    
    {
        
        guard animationIndex > 0 else {
            return
        }
        
        animationIndex -= 1
        let anime = nodeAnimations[animationIndex]
        sceneView.animate(node: anime, animations: anime.reverse)
        
        
//        if animationButtonCounter == 1 {
//            reversedSecurityScrewsAnimation()
//            animationButtonCounter -= 1
//        }
//
//        else if animationButtonCounter == 2 {
//            reversedDisplayAnimation()
//            animationButtonCounter -= 1
//        }
//
//        else if animationButtonCounter == 3 {
//            reversedCowlingScrewsAnimation()
//            animationButtonCounter -= 1
//        }
//
//        else if animationButtonCounter == 4 {
//            reversedBatteryCowlingAnimation()
//            animationButtonCounter -= 1
//        }
    }
    
    
    
    
    @IBAction func nextAnimation(_ sender: UIButton) {
        
        guard animationIndex < nodeAnimations.count else {
            return
        }
        
        let anime = nodeAnimations[animationIndex]
        sceneView.animate(node: anime, animations: anime.animations)
        animationIndex += 1
        
//        if animationButtonCounter == 0 {
//            securityScrewsAnimation()
//            animationButtonCounter += 1
//        }
//
//        else if animationButtonCounter == 1 {
//            displayAnimation()
//            animationButtonCounter += 1
//        }
//
//        else if animationButtonCounter == 2 {
//            cowlingScrewsAnimation()
//            animationButtonCounter += 1
//        }
//
//        else if animationButtonCounter == 3 {
//            batteryCowlingAnimation()
//            animationButtonCounter += 1
//
//        }
    
    }
    
    
    
    

    
        override func viewDidLoad() {
            super.viewDidLoad()
            
            sceneView.delegate = self
//          sceneView.session.delegate = self
            
            // set up scene content.
//            setupCamera()
            //sceneView.scene.rootNode.addChildNode(focusSquare)
            
            // Shows yellow dots detecting surface
            self.sceneView.debugOptions = [ARSCNDebugOptions.showFeaturePoints]
            
            sceneView.automaticallyUpdatesLighting = true
            
            animationButtons.isHidden = true
            
         //sceneView.scene.rootNode.addChildNode(line)
            
            nodeAnimations = [
                NodeAnimation(nodeName: "securityScrews", duration: 3.0,
                              animations: { node in
                                node.position.z = 3
                              }, reverse: { node in
                                  node.position.z = 0
                              }),
                NodeAnimation(nodeName: "display", duration: 3.0,
                              animations: { node in
                                node.position.y = 3
                                node.eulerAngles.z = -2
                            }, reverse: { node in
                                node.position.y = 0
                                node.eulerAngles.z = 0
                            }),
                NodeAnimation(nodeName: "cowlingScrews", duration: 3.0,
                              animations: { node in
                                node.position.y = 2.5
                            }, reverse: { node in
                                node.position.y = 0
                            }),
                NodeAnimation(nodeName: "batteryCowling", duration: 3.0,
                              animations: { node in
                                node.position.y = 4.0
                            }, reverse: { node in
                                node.position.y = 0
                            }),
            ]
            
            
          }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            
            // Create a session configuration
            let configuration = ARWorldTrackingConfiguration()
            
            configuration.planeDetection = .horizontal
            configuration.environmentTexturing = .automatic
            
            // Run the view's session
            sceneView.session.run(configuration)
        
        }
    
    
    
    
    
    override func viewWillDisappear(_ animated: Bool) {
            super.viewWillDisappear(animated)
            
            // Pause the view's session
            sceneView.session.pause()
           }
    
    // MARK: - scene content setup
    
//    func setupCamera() {
//        guard let camera = sceneView.pointOfView?.camera else {
//            fatalError("Expected a valid 'PointOfView' from the scene")
//        }
//        /*
//         Enable HDR camera settings for the most realistic appearance
//         with environmental lighting and physically based materials.
//         */
//        camera.wantsHDR = true
//        camera.exposureOffset = -1
//        camera.minimumExposure = -1
//        camera.maximumExposure = 3
//    }
    
    
    //MARK: - Session management
    
    // Creates a new AR configuration to run on the 'session'
//    func resetTracking() {
//        let configuration = ARWorldTrackingConfiguration()
//        configuration.planeDetection = [.horizontal, .vertical]
//        configuration.environmentTexturing = .automatic
//
//        session.run(configuration, options: [.resetTracking, .removeExistingAnchors])
//    }
    
   
    
    
//    func updateFocusSquare(isObjectVisible: Bool) {
//        if isObjectVisible {
//            focusSquare.hide()
//        } else {
//            focusSquare.unhide()
//        }
//
//        // Perform hit testing only when ARKit tracking is in a good state.
//        if let camera = session.currentFrame?.camera, case .normal = camera.trackingState,
//            let result = self.sceneView.smartHitTest(screenCenter) {
//            updateQueue.async {
//                self.sceneView.scene.rootNode.addChildNode(self.focusSquare)
//                self.focusSquare.state = .detecting(hitTestResult: result, camera: camera)
//            }
////            addObjectButton.isHidden = false
////            statusViewController.cancelScheduledMessage(for: .focusSquare)
//        } else {
//            updateQueue.async {
//                self.focusSquare.state = .initializing
//                self.sceneView.pointOfView?.addChildNode(self.focusSquare)
//            }
////            addObjectButton.isHidden = true
//        }
//
//    }
    


 
    
    
    // MARK: Adds iPhoneX with touch event
    
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

            if let touch = touches.first {
                let touchLocation = touch.location(in: sceneView)

                let results = sceneView.hitTest(touchLocation, types: .existingPlaneUsingExtent)


                        if let hitResuls = results.first {
                            

                        //creates and adds scene
                            let iPhoneScene = SCNScene(named: "art.scnassets/iPhoneX.scn")!

                            if let iPhoneNode = iPhoneScene.rootNode.childNode(withName: "iPhoneX", recursively: true) {

                            iPhoneNode.position = SCNVector3(x: hitResuls.worldTransform.columns.3.x,
                                                            y: hitResuls.worldTransform.columns.3.y,
                                                            z: hitResuls.worldTransform.columns.3.z)
                                
                                sceneView.scene.rootNode.addChildNode(iPhoneNode)
                                
                                animationButtons.isHidden = false
                                
                            

                                
                                    }
                                }
                            }
            
                        }
    
        
    
    
    
    
        // security screws animation
    func securityScrewsAnimation1() {
        if let securityScrewsNode = sceneView.scene.rootNode.childNode(withName: "securityScrews", recursively: true) {
            
            SCNTransaction.begin()
            securityScrewsNode.position.z = 3
            SCNTransaction.animationDuration = 3
            SCNTransaction.commit()
            
           // var line = CylinderLine(parent: securityScrewsNode, v1: SCNVector3(0.2, 0.5, 0), v2: SCNVector3(1,1,-1), radius: 0.05, radSegmentCount: 2, color: .yellow)
        }
        
    }
    
    func securityScrewsAnimation() {
        sampleAnime(name: "securityScrews", duration: 3.0) { node in
            node.position.z = 3
        }
    }
    
    //reversed security scews animation
    func reversedSecurityScrewsAnimation() {
        if let reversedSecurityScrewsAnimation = sceneView.scene.rootNode.childNode(withName: "securityScrews", recursively: true) {
            
            SCNTransaction.begin()
            reversedSecurityScrewsAnimation.position.z = 0
            SCNTransaction.animationDuration = 2.5
            SCNTransaction.commit()
        }
    }
    
    func sampleAnime(name: String, duration: Double, animations: (SCNNode) -> () ) {
        if let anime = sceneView.scene.rootNode.childNode(withName: name,
                                                          recursively: true) {
            
            SCNTransaction.begin()
            animations(anime)
            SCNTransaction.animationDuration = duration
            SCNTransaction.commit()
        }
    }
    
    
    
    
    
    
    
        // display animation
    func displayAnimation() {
        
        sampleAnime(name: "display", duration: 2.5) { node in
            node.position.y = 3
            node.eulerAngles.z = -2
        }
//       if let displayAnimationNode = sceneView.scene.rootNode.childNode(withName: "display", recursively: true) {
//
////            displayAnimationNode.runAction(SCNAction.move(to: SCNVector3(0, 1, 0), duration: 2))
//
//            SCNTransaction.begin()
//            displayAnimationNode.position.y = 3
//            displayAnimationNode.eulerAngles.z = -2
//            SCNTransaction.animationDuration = 2.5
//            SCNTransaction.commit()
//        }
    }
    
    //testing reversed animation
    func reversedDisplayAnimation() {
        
        if let reversedDisplayAnimation = sceneView.scene.rootNode.childNode(withName: "display", recursively: true) {
            
            SCNTransaction.begin()
            reversedDisplayAnimation.position.y = 0
            reversedDisplayAnimation.eulerAngles.z = 0
            SCNTransaction.animationDuration = 2.5
            SCNTransaction.commit()
        }
    }
    
    
    
    
     // cowling screws animation
    func cowlingScrewsAnimation() {
        if let cowlingScrewsNode = sceneView.scene.rootNode.childNode(withName: "cowlingScrews", recursively: true) {
            
            SCNTransaction.begin()
            cowlingScrewsNode.position.y = 5
            SCNTransaction.animationDuration = 2.5
            SCNTransaction.commit()
        }
    }
    
        // reversed cowling screws animation
    func reversedCowlingScrewsAnimation() {
        if let reversedCowlingScrewsAnimation = sceneView.scene.rootNode.childNode(withName: "cowlingScrews", recursively: true) {
            
            SCNTransaction.begin()
            reversedCowlingScrewsAnimation.position.y = -1
            SCNTransaction.animationDuration = 2.5
            SCNTransaction.commit()
        }
    }
    
    
    
    
    
    
    
    
    
    
    func batteryCowlingAnimation() {
        if let batteryCowlingAnimation = sceneView.scene.rootNode.childNode(withName: "batteryCowling", recursively: true) {
            
            SCNTransaction.begin()
            batteryCowlingAnimation.position.y = 4
            SCNTransaction.animationDuration = 2.5
            SCNTransaction.commit()
            
         }
    }
    
    //reversed cownling animation
    func reversedBatteryCowlingAnimation() {
        if let reversedBatteryCowlingAnimation = sceneView.scene.rootNode.childNode(withName: "batteryCowling", recursively: true) {
            
            SCNTransaction.begin()
            reversedBatteryCowlingAnimation.position.y = 0
            SCNTransaction.animationDuration = 2.5
            SCNTransaction.commit()
            
            
           
                        
        }
    }
 
    
    
    
    
    
}

