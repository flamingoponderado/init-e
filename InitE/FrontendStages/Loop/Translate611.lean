import InitE.CompactComputation
import InitE.LoopKernelComputation
import InitE.FrontendStages.Crep.Data611
import InitE.FrontendStages.Loop.Data611
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitE.FrontendStages.Loop
theorem translate611_eq :
    (675, List.range Crep.output611.2.1.length,
      optimiseHOL (compFuncHOLExact Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig.isa
        functionMap Crep.output611.2.1 (crepSimpProgHOL Crep.output611.2.2))) = output611 := by
  rw [InitE.LoopKernelComputation.optimiseStructural_eq]
  kernel_rfl
#print axioms translate611_eq
end InitE.FrontendStages.Loop
