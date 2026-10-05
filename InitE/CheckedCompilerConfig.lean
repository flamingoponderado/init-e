import InitE.CompilerConfigLiteral
import InitE.CompilerOracles
import InitE.WordBackend.FunctionsFacts

namespace InitE

/-- Baseline compilation uses the fixed, compiler-validated allocation tape. -/
def baselineCompilerConfig : Flapjack.Compiler.Backend.Backend.Config :=
  oracleCompilerConfig WordBackend.oracles

/-- The literal output metadata with the checked input allocation configuration. -/
def baselineConfigLiteralWithOracles : Flapjack.Compiler.Backend.Backend.Config :=
  { baselineConfigLiteral with wordToWordConf := baselineCompilerConfig.wordToWordConf }

end InitE
