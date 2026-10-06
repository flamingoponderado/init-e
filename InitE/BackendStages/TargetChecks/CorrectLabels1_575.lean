import InitE.BackendStages.TargetChecks.CorrectLabels0_575
import InitE.BackendStages.TargetChecks.CorrectEncode0_575
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_575
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_575_eq : LabToTarget.sectionLabels 418372 Reencode0_575.lines [] = (418916, localLabels1_575) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 418372 418916 riscvConfig.encode
    Initial575.lines Reencode0_575.lines [] Reencode0_575_eq).trans
    (localLabels0_575_eq.trans (by kernel_rfl))
#print axioms localLabels1_575_eq
end InitE.BackendStages.TargetChecks.Correct
