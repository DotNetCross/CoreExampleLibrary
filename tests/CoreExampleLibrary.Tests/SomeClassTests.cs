using System;
using CoreExampleLibrary;
using Xunit;

namespace CoreExampleLibrary.Tests
{
    public class SomeClassTests
    {
        [Fact]
        public void One() 
        {
            Assert.Equal(1, SomeClass.One());
        }
    }
}
