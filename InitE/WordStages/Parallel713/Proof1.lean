import InitE.CompactComputation
import InitE.WordStages.Parallel713.Data1
import InitE.WordStages.Parallel713.Data0
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages.Parallel713
theorem pass713_1_eq : WordInst.instSelectExecutable riscvConfig (maxVarHOL (pass713_0) + 1) (pass713_0) = pass713_1 := by
  kernel_rfl
#print axioms pass713_1_eq
end InitE.WordStages.Parallel713
