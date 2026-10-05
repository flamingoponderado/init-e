import InitE.FrontendStages.Globals.Output841
import InitE.FrontendStages.Declarations.Data841
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate825
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate841_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified841) =
        some globalOutput841 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal841 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified841) := by trivial
theorem globalException841_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified841) = none := by rfl
#print axioms globalTranslate841_eq
end InitE.FrontendStages.Declarations
