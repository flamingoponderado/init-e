import InitE.FrontendStages.Crep.Data68
import InitE.FrontendStages.Loop.Data68
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitE.FrontendStages.Loop
theorem translate68_eq :
    (132, List.range Crep.output68.2.1.length,
      optimiseHOL (compFuncHOLExact Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig.isa
        functionMap Crep.output68.2.1 (crepSimpProgHOL Crep.output68.2.2))) = output68 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate68_eq
end InitE.FrontendStages.Loop
