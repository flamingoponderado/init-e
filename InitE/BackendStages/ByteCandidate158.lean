import InitE.BackendStages.BytePiecesData724
import InitE.BackendStages.BytePiecesData725
import InitE.BackendStages.BytePiecesData726
import InitE.BackendStages.BytePiecesData727
import InitE.BackendStages.BytePiecesData728
import InitE.BackendStages.BytePiecesData729
import InitE.BackendStages.BytePiecesData730
import InitECandidate.Bytes158
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate158_eq : InitECandidate.bytes158 = [piece724_1, piece725_0, piece726_0, piece727_0, piece728_0, piece729_0, piece730_0].flatten := by
  rw [piece724_1_eq, piece725_0_eq, piece726_0_eq, piece727_0_eq, piece728_0_eq, piece729_0_eq, piece730_0_eq]
  rfl
#print axioms candidate158_eq
end InitE.BackendStages.BytePieces
