import InitE.FrontendStages.Globals.Output768
import InitE.FrontendStages.Declarations.Data768
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate749
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate768_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified768) =
        some globalOutput768 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal768 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified768) := by trivial
theorem globalException768_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified768) = none := by rfl
#print axioms globalTranslate768_eq
end InitE.FrontendStages.Declarations
