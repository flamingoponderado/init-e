import InitE.FrontendStages.Globals.Output393
import InitE.FrontendStages.Declarations.Data393
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate377
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate393_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified393) =
        some globalOutput393 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal393 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified393) := by trivial
theorem globalException393_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified393) = none := by rfl
#print axioms globalTranslate393_eq
end InitE.FrontendStages.Declarations
