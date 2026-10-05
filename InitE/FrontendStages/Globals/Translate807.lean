import InitE.FrontendStages.Globals.Output807
import InitE.FrontendStages.Declarations.Data807
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate788
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate807_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified807) =
        some globalOutput807 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal807 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified807) := by trivial
theorem globalException807_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified807) = none := by rfl
#print axioms globalTranslate807_eq
end InitE.FrontendStages.Declarations
