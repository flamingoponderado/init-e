import InitE.FrontendStages.Crep.Data164
import InitE.FrontendStages.Loop.Data164
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitE.FrontendStages.Loop
theorem translate164_eq :
    (228, List.range Crep.output164.2.1.length,
      optimiseHOL (compFuncHOLExact Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig.isa
        functionMap Crep.output164.2.1 (crepSimpProgHOL Crep.output164.2.2))) = output164 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate164_eq
end InitE.FrontendStages.Loop
