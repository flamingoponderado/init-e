import InitE.FrontendStages.Crep.Data543
import InitE.FrontendStages.Loop.Data543
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitE.FrontendStages.Loop
theorem translate543_eq :
    (607, List.range Crep.output543.2.1.length,
      optimiseHOL (compFuncHOLExact Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig.isa
        functionMap Crep.output543.2.1 (crepSimpProgHOL Crep.output543.2.2))) = output543 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate543_eq
end InitE.FrontendStages.Loop
