import InitE.FrontendStages.Globals.Output267
import InitE.FrontendStages.Declarations.Data267
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate251
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate267_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified267) =
        some globalOutput267 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal267 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified267) := by trivial
theorem globalException267_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified267) = none := by rfl
#print axioms globalTranslate267_eq
end InitE.FrontendStages.Declarations
