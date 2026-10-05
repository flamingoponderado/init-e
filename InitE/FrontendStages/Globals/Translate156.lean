import InitE.FrontendStages.Globals.Output156
import InitE.FrontendStages.Declarations.Data156
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate139
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate156_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified156) =
        some globalOutput156 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal156 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified156) := by trivial
theorem globalException156_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified156) = none := by rfl
#print axioms globalTranslate156_eq
end InitE.FrontendStages.Declarations
