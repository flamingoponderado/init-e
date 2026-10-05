import InitE.FrontendStages.Crep.Data450
import InitE.FrontendStages.Loop.Data450
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitE.FrontendStages.Loop
theorem translate450_eq :
    (514, List.range Crep.output450.2.1.length,
      optimiseHOL (compFuncHOLExact Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig.isa
        functionMap Crep.output450.2.1 (crepSimpProgHOL Crep.output450.2.2))) = output450 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate450_eq
end InitE.FrontendStages.Loop
