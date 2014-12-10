package comp
{
	import flash.events.FocusEvent;
	import flash.events.KeyboardEvent;
	
	import mx.utils.StringUtil;
	
	import spark.components.TextInput;
	
	public class PositiveIntegerTextInput extends TextInput
	{
		public function PositiveIntegerTextInput()
		{
			super();
		}
		
		/**
		 *  @private
		 */
		override protected function partAdded(partName:String, instance:Object):void
		{
			super.partAdded(partName, instance);
			
			if (instance == textDisplay)
			{
				this.restrict = "0-9";
				
				textDisplay.addEventListener(KeyboardEvent.KEY_UP, function():void{
					var txt:String = textDisplay.text;
					
					if(txt == '0'){
						textDisplay.text = '1';
					}
				});
				
				textDisplay.addEventListener(KeyboardEvent.KEY_DOWN, function():void{
					var txt:String = textDisplay.text;
					
					if(txt == '0'){
						textDisplay.text = '1';
					}
				});
				
				textDisplay.addEventListener(FocusEvent.FOCUS_OUT, function():void{
					var txt:String = textDisplay.text;
					
					if(StringUtil.trim(txt) == ''){
						textDisplay.text = '1';
					}
				});
			}
		}
	}
}