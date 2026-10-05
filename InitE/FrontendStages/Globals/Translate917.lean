import InitE.FrontendStages.Globals.Output917
import InitE.FrontendStages.Declarations.Data917
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate900
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate917_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified917) =
        some globalOutput917 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal917 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified917) := by trivial
theorem globalException917_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified917) = none := by rfl
#print axioms globalTranslate917_eq
end InitE.FrontendStages.Declarations
