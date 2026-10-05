import InitE.BackendStages.BytePiecesData817
import InitE.BackendStages.BytePiecesData818
import InitE.BackendStages.BytePiecesData819
import InitE.BackendStages.BytePiecesData820
import InitECandidate.Bytes193
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate193_eq : InitECandidate.bytes193 = [piece817_1, piece818_0, piece819_0, piece820_0].flatten := by
  rw [piece817_1_eq, piece818_0_eq, piece819_0_eq, piece820_0_eq]
  rfl
#print axioms candidate193_eq
end InitE.BackendStages.BytePieces
