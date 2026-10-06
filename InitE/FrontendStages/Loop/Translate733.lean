import InitE.CompactComputation
import InitE.LoopKernelComputation
import InitE.FrontendStages.Crep.Data733
import InitE.FrontendStages.Loop.Data733
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitE.FrontendStages.Loop
theorem translate733_eq :
    (797, List.range Crep.output733.2.1.length,
      optimiseHOL (compFuncHOLExact Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig.isa
        functionMap Crep.output733.2.1 (crepSimpProgHOL Crep.output733.2.2))) = output733 := by
  rw [InitE.LoopKernelComputation.optimiseStructural_eq]
  kernel_rfl
#print axioms translate733_eq
end InitE.FrontendStages.Loop
