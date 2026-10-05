import InitE.FrontendStages.Globals.Output686
import InitE.FrontendStages.Declarations.Data686
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate670
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate686_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified686) =
        some globalOutput686 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal686 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified686) := by trivial
theorem globalException686_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified686) = none := by rfl
#print axioms globalTranslate686_eq
end InitE.FrontendStages.Declarations
