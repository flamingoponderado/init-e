import InitE.BackendStages.TargetChecks.CorrectLabels0_487
import InitE.BackendStages.TargetChecks.CorrectEncode0_487
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_487
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_487_eq : LabToTarget.sectionLabels 343860 Reencode0_487.lines [] = (344744, localLabels1_487) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 343860 344744 riscvConfig.encode
    Initial487.lines Reencode0_487.lines [] Reencode0_487_eq).trans
    (localLabels0_487_eq.trans (by kernel_rfl))
#print axioms localLabels1_487_eq
end InitE.BackendStages.TargetChecks.Correct
