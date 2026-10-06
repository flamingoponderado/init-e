import Tools.GenSmallStages
import InitE.SmallStages.Oracles761
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 761 InitE.WordStages.source761.2.1 InitE.WordStages.source761.2.2 InitE.SmallStages.Oracles761.oracle761
