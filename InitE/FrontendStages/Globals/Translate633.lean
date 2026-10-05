import InitE.FrontendStages.Globals.Output633
import InitE.FrontendStages.Declarations.Data633
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate608
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate633_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified633) =
        some globalOutput633 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal633 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified633) := by trivial
theorem globalException633_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified633) = none := by rfl
#print axioms globalTranslate633_eq
end InitE.FrontendStages.Declarations
