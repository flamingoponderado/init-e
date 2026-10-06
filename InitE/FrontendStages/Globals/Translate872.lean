import InitE.FrontendStages.Globals.Output872
import InitE.FrontendStages.Declarations.Data872
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate856
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate872_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified872) =
        some globalOutput872 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal872 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified872) := by trivial
theorem globalException872_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified872) = none := by rfl
#print axioms globalTranslate872_eq
end InitE.FrontendStages.Declarations
