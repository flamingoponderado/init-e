import InitE.FrontendStages.Globals.Output791
import InitE.FrontendStages.Declarations.Data791
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate775
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate791_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified791) =
        some globalOutput791 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal791 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified791) := by trivial
theorem globalException791_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified791) = none := by rfl
#print axioms globalTranslate791_eq
end InitE.FrontendStages.Declarations
