import InitE.FrontendStages.Crep.Data549
import InitE.FrontendStages.Loop.Data549
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitE.FrontendStages.Loop
theorem translate549_eq :
    (613, List.range Crep.output549.2.1.length,
      optimiseHOL (compFuncHOLExact Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig.isa
        functionMap Crep.output549.2.1 (crepSimpProgHOL Crep.output549.2.2))) = output549 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate549_eq
end InitE.FrontendStages.Loop
