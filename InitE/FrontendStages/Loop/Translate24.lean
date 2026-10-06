import InitE.CompactComputation
import InitE.LoopKernelComputation
import InitE.FrontendStages.Crep.Data24
import InitE.FrontendStages.Loop.Data24
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitE.FrontendStages.Loop
theorem translate24_eq :
    (88, List.range Crep.output24.2.1.length,
      optimiseHOL (compFuncHOLExact Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig.isa
        functionMap Crep.output24.2.1 (crepSimpProgHOL Crep.output24.2.2))) = output24 := by
  rw [InitE.LoopKernelComputation.optimiseStructural_eq]
  kernel_rfl
#print axioms translate24_eq
end InitE.FrontendStages.Loop
