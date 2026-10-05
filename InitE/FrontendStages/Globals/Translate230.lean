import InitE.FrontendStages.Globals.Output230
import InitE.FrontendStages.Declarations.Data230
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate212
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate230_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified230) =
        some globalOutput230 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal230 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified230) := by trivial
theorem globalException230_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified230) = none := by rfl
#print axioms globalTranslate230_eq
end InitE.FrontendStages.Declarations
