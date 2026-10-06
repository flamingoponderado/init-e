import InitE.BackendStages.BytePiecesData148
import InitE.BackendStages.BytePiecesData149
import InitE.BackendStages.BytePiecesData150
import InitE.BackendStages.BytePiecesData151
import InitE.BackendStages.BytePiecesData152
import InitE.BackendStages.BytePiecesData153
import InitE.BackendStages.BytePiecesData154
import InitE.BackendStages.BytePiecesData155
import InitECandidate.Bytes008
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate008_eq : InitECandidate.bytes008 = [piece148_1, piece149_0, piece150_0, piece151_0, piece152_0, piece153_0, piece154_0, piece155_0].flatten := by
  rw [piece148_1_eq, piece149_0_eq, piece150_0_eq, piece151_0_eq, piece152_0_eq, piece153_0_eq, piece154_0_eq, piece155_0_eq]
  rfl
#print axioms candidate008_eq
end InitE.BackendStages.BytePieces
