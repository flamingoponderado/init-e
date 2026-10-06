import InitE.FrontendStages.Crep.Data577
import InitE.FrontendStages.Loop.Data577
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitE.FrontendStages.Loop
theorem translate577_eq :
    (641, List.range Crep.output577.2.1.length,
      optimiseHOL (compFuncHOLExact Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig.isa
        functionMap Crep.output577.2.1 (crepSimpProgHOL Crep.output577.2.2))) = output577 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate577_eq
end InitE.FrontendStages.Loop
