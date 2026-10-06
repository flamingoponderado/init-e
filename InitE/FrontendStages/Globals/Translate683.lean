import InitE.FrontendStages.Globals.Output683
import InitE.FrontendStages.Declarations.Data683
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate667
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate683_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified683) =
        some globalOutput683 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal683 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified683) := by trivial
theorem globalException683_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified683) = none := by rfl
#print axioms globalTranslate683_eq
end InitE.FrontendStages.Declarations
