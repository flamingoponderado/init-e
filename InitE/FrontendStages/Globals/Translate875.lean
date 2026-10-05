import InitE.FrontendStages.Globals.Output875
import InitE.FrontendStages.Declarations.Data875
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate859
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate875_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified875) =
        some globalOutput875 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal875 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified875) := by trivial
theorem globalException875_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified875) = none := by rfl
#print axioms globalTranslate875_eq
end InitE.FrontendStages.Declarations
