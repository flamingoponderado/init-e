import InitE.FrontendStages.Crep.Data528
import InitE.FrontendStages.Loop.Data528
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitE.FrontendStages.Loop
theorem translate528_eq :
    (592, List.range Crep.output528.2.1.length,
      optimiseHOL (compFuncHOLExact Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig.isa
        functionMap Crep.output528.2.1 (crepSimpProgHOL Crep.output528.2.2))) = output528 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate528_eq
end InitE.FrontendStages.Loop
