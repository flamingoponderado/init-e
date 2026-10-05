import InitE.FrontendStages.Crep.Data232
import InitE.FrontendStages.Loop.Data232
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitE.FrontendStages.Loop
theorem translate232_eq :
    (296, List.range Crep.output232.2.1.length,
      optimiseHOL (compFuncHOLExact Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig.isa
        functionMap Crep.output232.2.1 (crepSimpProgHOL Crep.output232.2.2))) = output232 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate232_eq
end InitE.FrontendStages.Loop
