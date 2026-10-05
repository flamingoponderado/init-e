import Tools.GenSmallStages
import InitE.SmallStages.Oracles802
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 802 InitE.WordStages.source802.2.1 InitE.WordStages.source802.2.2 InitE.SmallStages.Oracles802.oracle802
