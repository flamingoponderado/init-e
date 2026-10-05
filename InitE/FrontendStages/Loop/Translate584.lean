import InitE.FrontendStages.Crep.Data584
import InitE.FrontendStages.Loop.Data584
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitE.FrontendStages.Loop
theorem translate584_eq :
    (648, List.range Crep.output584.2.1.length,
      optimiseHOL (compFuncHOLExact Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig.isa
        functionMap Crep.output584.2.1 (crepSimpProgHOL Crep.output584.2.2))) = output584 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate584_eq
end InitE.FrontendStages.Loop
