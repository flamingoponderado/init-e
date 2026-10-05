import InitE.FrontendStages.Crep.Data2
import InitE.FrontendStages.Loop.Data2
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitE.FrontendStages.Loop
theorem translate2_eq :
    (66, List.range Crep.output2.2.1.length,
      optimiseHOL (compFuncHOLExact Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig.isa
        functionMap Crep.output2.2.1 (crepSimpProgHOL Crep.output2.2.2))) = output2 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate2_eq
end InitE.FrontendStages.Loop
