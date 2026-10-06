import InitE.BackendStages.TargetChecks.CorrectLabels0_144
import InitE.BackendStages.TargetChecks.CorrectEncode0_144
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_144
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_144_eq : LabToTarget.sectionLabels 33516 Reencode0_144.lines [] = (34236, localLabels1_144) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 33516 34236 riscvConfig.encode
    Initial144.lines Reencode0_144.lines [] Reencode0_144_eq).trans
    (localLabels0_144_eq.trans (by kernel_rfl))
#print axioms localLabels1_144_eq
end InitE.BackendStages.TargetChecks.Correct
