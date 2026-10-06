import InitE.FrontendStages.Globals.Output427
import InitE.FrontendStages.Declarations.Data427
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate411
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate427_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified427) =
        some globalOutput427 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal427 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified427) := by trivial
theorem globalException427_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified427) = none := by rfl
#print axioms globalTranslate427_eq
end InitE.FrontendStages.Declarations
