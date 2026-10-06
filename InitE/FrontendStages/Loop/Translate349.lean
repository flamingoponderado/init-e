import InitE.FrontendStages.Crep.Data349
import InitE.FrontendStages.Loop.Data349
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitE.FrontendStages.Loop
theorem translate349_eq :
    (413, List.range Crep.output349.2.1.length,
      optimiseHOL (compFuncHOLExact Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig.isa
        functionMap Crep.output349.2.1 (crepSimpProgHOL Crep.output349.2.2))) = output349 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate349_eq
end InitE.FrontendStages.Loop
