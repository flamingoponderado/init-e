import InitE.FrontendStages.Crep.Data753
import InitE.FrontendStages.Loop.Data753
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitE.FrontendStages.Loop
theorem translate753_eq :
    (817, List.range Crep.output753.2.1.length,
      optimiseHOL (compFuncHOLExact Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig.isa
        functionMap Crep.output753.2.1 (crepSimpProgHOL Crep.output753.2.2))) = output753 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate753_eq
end InitE.FrontendStages.Loop
