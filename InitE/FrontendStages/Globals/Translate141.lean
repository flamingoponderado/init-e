import InitE.FrontendStages.Globals.Output141
import InitE.FrontendStages.Declarations.Data141
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate125
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate141_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified141) =
        some globalOutput141 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal141 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified141) := by trivial
theorem globalException141_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified141) = none := by rfl
#print axioms globalTranslate141_eq
end InitE.FrontendStages.Declarations
