//
//  ViewController.swift
//  WorldTracking
//
//  Created by Devin Eror on 11/18/17.
//  Copyright © 2017 Devin Eror. All rights reserved.
//

import UIKit
import ARKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sceneView: ARSCNView!
    let configuration = ARWorldTrackingConfiguration()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.sceneView.debugOptions = [ARSCNDebugOptions.showFeaturePoints, ARSCNDebugOptions.showWorldOrigin]
        
        self.sceneView.session.run(configuration, options: .removeExistingAnchors)
        
        if (self.sceneView != nil) {
            print("Should be working!")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func add(_ sender: Any) {
        
        let node = SCNNode()
            node.geometry = SCNBox(width: 0.1, height: 0.1, length: 0.1, chamferRadius: 0)
            node.geometry?.firstMaterial?.diffuse.contents = UIColor.blue
        
        self.sceneView.scene.rootNode.addChildNode(node)
    }
}

