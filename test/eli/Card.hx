package eli;

import massive.munit.util.Timer;
import massive.munit.Assert;
import massive.munit.async.AsyncFactory;
import mockatoo.*;
import org.hamcrest.core.*;
import org.hamcrest.*;

using mockatoo.Mockatoo;
using org.hamcrest.MatcherAssert;
using mockatoo.Mockatoo;

class Card 
{
	public function new() 
	{
		
	}
	
	@BeforeClass
	public function beforeClass():Void
	{
	}
	
	@AfterClass
	public function afterClass():Void
	{
	}
	
	@Before
	public function setup():Void
	{
	}
	
	@After
	public function tearDown():Void
	{
	}
	
	@Test
	public function testExample():Void
	{
		Assert.isTrue(false);
	}
}