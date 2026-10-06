import InitE.FrontendStages.Globals.Output695
import InitE.FrontendStages.Declarations.Data695
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate679
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate695_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified695) =
        some globalOutput695 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal695 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified695) := by trivial
theorem globalException695_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified695) = none := by rfl
#print axioms globalTranslate695_eq
end InitE.FrontendStages.Declarations
