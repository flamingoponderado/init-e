import InitE.FrontendStages.Globals.Output255
import InitE.FrontendStages.Declarations.Data255
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate232
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate255_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified255) =
        some globalOutput255 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal255 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified255) := by trivial
theorem globalException255_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified255) = none := by rfl
#print axioms globalTranslate255_eq
end InitE.FrontendStages.Declarations
