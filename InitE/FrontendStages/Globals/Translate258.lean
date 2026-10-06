import InitE.FrontendStages.Globals.Output258
import InitE.FrontendStages.Declarations.Data258
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate235
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate258_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified258) =
        some globalOutput258 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal258 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified258) := by trivial
theorem globalException258_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified258) = none := by rfl
#print axioms globalTranslate258_eq
end InitE.FrontendStages.Declarations
