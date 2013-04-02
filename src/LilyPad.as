package {
	
	import flare.core.Pivot3D;
	import flare.loaders.ColladaLoader;
	import flare.core.Mesh3D;
	import flare.materials.filters.ColorFilter;
	import flare.materials.Material3D;
	import flare.materials.Shader3D;
	
	/**
	 * @author avarga
	 */
	public class LilyPad extends Mesh3D {
		
		[Embed(source = "/../assets/LilyPad.dae", mimeType = 'application/octet-stream')]
		static private var StaticClass:Class;
		
		static private var staticShape:ColladaLoader;
		
		// static initializer
		{
			staticShape = new ColladaLoader(XML(new StaticClass));
			staticShape.load();
		}
		
		public function LilyPad(name : String = "") {
			super(name);
			
			this.addChild(staticShape.clone());
		}
	}
}
