import InitE.FrontendStages.Globals.Output723
import InitE.FrontendStages.Declarations.Data723
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate706
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate723_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified723) =
        some globalOutput723 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal723 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified723) := by trivial
theorem globalException723_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified723) = none := by rfl
#print axioms globalTranslate723_eq
end InitE.FrontendStages.Declarations
