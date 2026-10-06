import InitE.CompactComputation
import InitE.LoopKernelComputation
import InitE.FrontendStages.Crep.Data34
import InitE.FrontendStages.Loop.Data34
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitE.FrontendStages.Loop
theorem translate34_eq :
    (98, List.range Crep.output34.2.1.length,
      optimiseHOL (compFuncHOLExact Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig.isa
        functionMap Crep.output34.2.1 (crepSimpProgHOL Crep.output34.2.2))) = output34 := by
  rw [InitE.LoopKernelComputation.optimiseStructural_eq]
  kernel_rfl
#print axioms translate34_eq
end InitE.FrontendStages.Loop
