import InitE.FrontendStages.Globals.Output843
import InitE.FrontendStages.Declarations.Data843
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate827
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate843_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified843) =
        some globalOutput843 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal843 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified843) := by trivial
theorem globalException843_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified843) = none := by rfl
#print axioms globalTranslate843_eq
end InitE.FrontendStages.Declarations
