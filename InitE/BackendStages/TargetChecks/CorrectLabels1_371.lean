import InitE.BackendStages.TargetChecks.CorrectLabels0_371
import InitE.BackendStages.TargetChecks.CorrectEncode0_371
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_371
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_371_eq : LabToTarget.sectionLabels 256924 Reencode0_371.lines [] = (257108, localLabels1_371) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 256924 257108 riscvConfig.encode
    Initial371.lines Reencode0_371.lines [] Reencode0_371_eq).trans
    (localLabels0_371_eq.trans (by kernel_rfl))
#print axioms localLabels1_371_eq
end InitE.BackendStages.TargetChecks.Correct
