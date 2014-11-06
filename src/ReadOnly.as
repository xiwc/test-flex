package
{
	public class ReadOnly
	{
		public function ReadOnly()
		{
		}
		
		public function get obj():Object
		{
			return _obj;
		}
		
		private const _obj:Object = {};
	}
}