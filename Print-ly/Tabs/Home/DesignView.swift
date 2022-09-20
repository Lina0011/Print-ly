//
//  DesignView.swift
//  Print-ly
//
//  Created by Lina on 23/02/1444 AH.
//


import UIKit
import SceneKit
import SwiftUI

struct DesignView: UIViewRepresentable{
    
    var sceneView: SCNView! = SCNView()
   

    func makeUIView(context: Context) -> SCNView {
        
       
        // 1: Load .obj file
        let scene = SCNScene(named: "cup.scn")
//        scene?.rootNode.childNodes[0].geometry?.material(named: "material_3")?.diffuse.contents = UIColor.red
//
        // 2: Add camera node
        let cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        // 3: Place camera
        cameraNode.position = SCNVector3(x: 0, y: 10, z: 35)
        // 4: Set camera on scene
        scene?.rootNode.addChildNode(cameraNode)

        // 5: Adding light to scene
        let lightNode = SCNNode()
        lightNode.light = SCNLight()
        lightNode.light?.type = .omni
        lightNode.position = SCNVector3(x: 0, y: 10, z: 35)
        scene?.rootNode.addChildNode(lightNode)
        
        // 6: Creating and adding ambien light to scene
        let ambientLightNode = SCNNode()
        ambientLightNode.light = SCNLight()
        ambientLightNode.light?.type = .ambient
        ambientLightNode.light?.color = UIColor.gray
        scene?.rootNode.addChildNode(ambientLightNode)
        

        // If you don't want to fix manually the lights
//        sceneView.autoenablesDefaultLighting = true
        
        // Allow user to manipulate camera
        sceneView.allowsCameraControl = true
        
        // Show FPS logs and timming
//         sceneView.showsStatistics = true
        
        // Set background color
        sceneView.backgroundColor = UIColor(hexString: "E8E8E8")
        
        
        // Allow user translate image
        sceneView.cameraControlConfiguration.allowsTranslation = false
        
        // Set scene settings
        sceneView.scene = scene
        
        return sceneView
    
    }
    
    func updateUIView(_ uiViewController: SCNView, context: Context) {
        
    }
 

}
