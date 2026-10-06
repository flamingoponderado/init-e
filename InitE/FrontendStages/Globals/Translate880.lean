import InitE.FrontendStages.Globals.Output880
import InitE.FrontendStages.Declarations.Data880
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate864
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate880_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified880) =
        some globalOutput880 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal880 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified880) := by trivial
theorem globalException880_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified880) = none := by rfl
#print axioms globalTranslate880_eq
end InitE.FrontendStages.Declarations
