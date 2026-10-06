import InitE.BackendStages.TargetChecks.CorrectLabels0_348
import InitE.BackendStages.TargetChecks.CorrectEncode0_348
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_348
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_348_eq : LabToTarget.sectionLabels 245416 Reencode0_348.lines [] = (245616, localLabels1_348) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 245416 245616 riscvConfig.encode
    Initial348.lines Reencode0_348.lines [] Reencode0_348_eq).trans
    (localLabels0_348_eq.trans (by kernel_rfl))
#print axioms localLabels1_348_eq
end InitE.BackendStages.TargetChecks.Correct
