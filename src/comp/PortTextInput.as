package comp
{
	import flash.events.KeyboardEvent;
	
	import mx.controls.Alert;
	
	import spark.components.TextInput;
	import spark.validators.NumberValidator;
	
	/**
	 * Port TextInput Ex.
	 * 
	 * @author xiweicheng
	 * @date 2014/08/04
	 */
	public class PortTextInput extends TextInput
	{
		
		public function PortTextInput()
		{
			super();
			
			init();
		}
		
		
		private function init():void{
			this.addEventListener(KeyboardEvent.KEY_DOWN, onKeyDownHandler);
			this.addEventListener(KeyboardEvent.KEY_UP, onKeyDownHandler);
		}
		
		protected function onKeyDownHandler(event:KeyboardEvent):void
		{
			// 48 - 57
			if(event.keyCode < 48 || event.keyCode > 57){
				this.text = this.text.replace(/\D/, '');
				this.text = this.text.replace(/\\./, '');
			}
			
			//1~65535
			var num:Number = Number(text);
			
			if(num < 1 || num > 65535){
				this.text = "";
			}
			
		}
		
	}
}