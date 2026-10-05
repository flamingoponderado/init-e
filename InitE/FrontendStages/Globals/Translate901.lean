import InitE.FrontendStages.Globals.Output901
import InitE.FrontendStages.Declarations.Data901
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate869
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate901_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified901) =
        some globalOutput901 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal901 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified901) := by trivial
theorem globalException901_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified901) = none := by rfl
#print axioms globalTranslate901_eq
end InitE.FrontendStages.Declarations
